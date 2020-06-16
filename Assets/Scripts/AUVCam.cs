using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.MLAgents;
using Unity.MLAgents.Sensors;
using UnityEngine.UI;

public class AUVCam : Agent
{

    public float speed;
    Rigidbody rBody;
    public Transform target;
    public Transform thrusterLeft;
    public Transform thrusterRight;

    public Transform thrusterFront;
    public Transform thrusterBack;

    public Text rewardText;
    float currentReward = 0;

    // Start is called before the first frame update
    void Start()
    {
        rBody = GetComponent<Rigidbody>();
    }
    
    public override void OnEpisodeBegin()
    {
        rBody.angularVelocity = Vector3.zero;
        rBody.velocity = Vector3.zero;
        //Random -3,6 -1,15
        transform.position = new Vector3(Random.Range(-3f, 15f), 0f, Random.Range(-1f, 15f));

        transform.rotation = Quaternion.identity;
        //transform.Rotate(0, 90, 90);
        currentReward = 0;
    }

    public override void CollectObservations(VectorSensor sensor)
    {
        //relative to target
        Vector3 directionToTarget = target.position - thrusterFront.position;


        sensor.AddObservation(rBody.GetRelativePointVelocity(thrusterLeft.localPosition).normalized);
        sensor.AddObservation(rBody.GetRelativePointVelocity(thrusterRight.localPosition).normalized);
        sensor.AddObservation(rBody.GetRelativePointVelocity(thrusterFront.localPosition).normalized);
        sensor.AddObservation(rBody.GetRelativePointVelocity(thrusterBack.localPosition).normalized);
        sensor.AddObservation(rBody.velocity.normalized);
        sensor.AddObservation(rBody.angularVelocity.normalized);

        //bypass this
        sensor.AddObservation(directionToTarget.normalized);


        sensor.AddObservation(transform.up);
        sensor.AddObservation(transform.forward);
    }

    void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.name == "Fish")
        {
            Debug.Log("FISH");
            SetReward(5.0f);
            currentReward += 5f;
            EndEpisode();
        }
    }

    public override void OnActionReceived(float[] vectorAction)
    {
        //Actions 4
        rBody.AddForceAtPosition(transform.forward * vectorAction[0] * speed, thrusterLeft.position);
        rBody.AddForceAtPosition(transform.forward * vectorAction[1] * speed, thrusterRight.position);

        rBody.AddForceAtPosition(transform.up * vectorAction[2] * speed, thrusterFront.position);
        rBody.AddForceAtPosition(transform.up * vectorAction[3] * speed, thrusterBack.position);


        //transform.position
        Vector3 directionToTarget = target.position - thrusterFront.position;

        //existential penatly
        AddReward(-0.005f);
        currentReward -= 0.005f;

        Debug.DrawLine(transform.position, transform.position + transform.up * 2);
        float facingDot = Vector3.Dot(directionToTarget.normalized, transform.forward);
        float movingTowardsDot = Vector3.Dot(directionToTarget.normalized, rBody.velocity.normalized);
        AddReward(0.03f * movingTowardsDot);
        AddReward(0.01f * facingDot);
        currentReward += 0.03f * movingTowardsDot;
        currentReward += 0.01f * facingDot;


        if (transform.position.y > 0)
        {
            rBody.useGravity = true;
        }
        else
        {
            rBody.useGravity = false;
        }

        rewardText.text = "Reward: " + System.String.Format("{0:0.00}", currentReward);
    }

    public override void Heuristic(float[] actionsOut)
    {
        if (Input.GetKeyDown(KeyCode.Q))
            actionsOut[0] = 1;
        if (Input.GetKeyDown(KeyCode.A))
            actionsOut[0] = -1;
        if (Input.GetKeyDown(KeyCode.W))
            actionsOut[1] = 1;
        if (Input.GetKeyDown(KeyCode.S))
            actionsOut[1] = -1;
        if (Input.GetKeyDown(KeyCode.E))
            actionsOut[2] = 1;
        if (Input.GetKeyDown(KeyCode.D))
            actionsOut[2] = -1;
        if (Input.GetKeyDown(KeyCode.R))
            actionsOut[3] = 1;
        if (Input.GetKeyDown(KeyCode.F))
            actionsOut[3] = -1;
        
    }

}
