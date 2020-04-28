using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pointUpAnim : MonoBehaviour
{
    float timer = 1f;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        timer -= Time.deltaTime;
        if (timer > 0)
        {
            transform.Translate(new Vector3(transform.localPosition.x, transform.localPosition.y + 0.2f, transform.localPosition.z) - transform.localPosition);
           
        }
        if(timer < 0)
        {
            Destroy(gameObject);
        }
    }
}
