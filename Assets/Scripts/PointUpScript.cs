using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PointUpScript : MonoBehaviour
{
    public GameObject pointUp;
    // Start is called before the first frame update
    void Start()
    {
    }

    void OnCollisionEnter(Collision coll)
    {
        Instantiate(pointUp, transform.position, Camera.main.transform.rotation);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
