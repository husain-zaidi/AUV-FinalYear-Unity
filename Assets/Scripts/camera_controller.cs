using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class camera_controller : MonoBehaviour
{
    public GameObject AUV;
    private Vector3 offset;

    // Start is called before the first frame update
    void Start()
    {
        offset = transform.position - AUV.transform.position;

    }

    // Update is called once per frame
    void Update()
    {
        transform.position = AUV.transform.position + offset;
    }
}
