using UnityEngine;
using System.Collections;

public class Rotate : MonoBehaviour {

	public Vector3 rotSpeed = new Vector3(0, 30, 0);
	public Vector3 rotOffset = Vector3.zero;
	public Space rotSpace = Space.Self;

	/**
	 * Start
	 */
	void Start() {
		transform.Rotate(rotOffset, rotSpace);
	}
	
	/**
	 * Update
	 */
	void Update () {
		transform.Rotate(rotSpeed*Time.deltaTime, rotSpace);
	}
}
