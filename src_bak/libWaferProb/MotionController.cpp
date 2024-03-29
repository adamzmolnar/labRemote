#include "MotionController.h"
#include "Helper.h"

#include <stdio.h>

#include <string>
#include <sstream>
#include <vector>

#include <unistd.h>  // for sleep()

using namespace std;
MotionController::MotionController(const char* dn_1):
	ControllerBase()
{
    xy_ctrl = new ControllerZaber(dn_1);
    z_ctrl = new ControllerGalil("192.168.1.30");
    m_position[0] = m_position[1] = m_position[2] = -1;
}

MotionController::~MotionController(){
	disconnect();
}

int MotionController::connect() {
	if(xy_ctrl->connect() != 0){ 
		return 1;
	}

	// connect z station
	if(z_ctrl->connect() != 0){
		return 2;
	}
	this->get_position();

	return 0;
}

int MotionController::disconnect(){
	xy_ctrl->disconnect();
	z_ctrl->disconnect();
	return 0;
}

int MotionController::set_speed(int axis, float sp){
	if (axis == 0 || axis == 1) { // x-y-axis
		xy_ctrl->set_speed(axis+1, sp);
	} else if (axis == 2) {
		z_ctrl->set_speed(axis, sp);
	} else {
		;
	}
	return 0;
}

int MotionController::mv_abs(int axis, float value){
	if(axis == 0 || axis == 1){
		xy_ctrl->mv_abs(axis+1, value);
	} else if (axis == 2){
		z_ctrl->mv_abs(axis, value);
	} else {
		;
	}
	return 0;
}

int MotionController::mv_rel(int axis, float value) {
	if(axis == 0 || axis == 1){
		xy_ctrl->mv_rel(axis+1, value);
	} else if (axis == 2) {
		z_ctrl->mv_rel(axis, value);
	} else {}
	return 0;
}

int MotionController::stop(){
	xy_ctrl->stop();
	z_ctrl->stop();
	return 0;
}

int MotionController::get_position(){
	get_pos_xy();
	get_pos_z();
	return 0;
}

int MotionController::get_pos_xy(){
	xy_ctrl->get_position();
	m_position[0] = xy_ctrl->m_position[0];
	m_position[1] = xy_ctrl->m_position[1];
	printf("xy position: %.2f, %.2f\n", m_position[0], m_position[1]);
	return 0;
}

int MotionController::get_pos_z(){
	z_ctrl->get_position();
	m_position[2] = z_ctrl->m_position[2];
	return 0;
}


int MotionController::get_position(int axis){
	get_position();
	return m_position[axis];
}

int MotionController::write(int axis, const string& cmd) 
{
	if(axis == 0 || axis == 1){
		xy_ctrl->write(cmd);
	} else if(axis == 2){
		z_ctrl->write(cmd);
	} else {}
	return 0;
}

int MotionController::set_home(){
	return xy_ctrl->set_home();
}

int MotionController::set_center(){
	return xy_ctrl->set_center();
}

void MotionController::find_max_min() {
	z_ctrl->find_max_min();
}

void MotionController::find_z_min() {
	z_ctrl->find_z_min();
}

void MotionController::check_z_min() {
	z_ctrl->check_z_min();
}

int MotionController::xy_park(){
	return xy_ctrl->park();
}


int MotionController::xy_unpark(){
	return xy_ctrl->unpark();
}


