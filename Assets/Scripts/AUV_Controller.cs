using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class AUV_Controller : MonoBehaviour
{
    public float speed = 50;
    public float torque = 5;

    private Rigidbody rb;
    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.ResetCenterOfMass();
    }

    // Update is called once per frame
    void Update()
    {
        float accelerate = Input.GetAxis("Vertical");

        //Rotating Player
        //transform.Rotate(0, moveHorizantal, 0);

       
        //float turn = Input.GetAxis("Horizontal");
        //rb.AddTorque(transform.right * torque * turn);
        rb.AddForce(transform.up * speed * accelerate);
        if (Input.GetKeyDown(KeyCode.Q))
        {
            rb.AddTorque(transform.forward * torque); 
        }else if(Input.GetKeyDown(KeyCode.E))
        {
            rb.AddTorque(-transform.forward * torque);

        }
        
        rb.AddRelativeTorque(Vector3.right * torque* 0.25f * Input.GetAxis("Horizontal"));
        
    }
}
