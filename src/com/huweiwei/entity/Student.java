package com.huweiwei.entity;

public class Student {
    private int id;
    private String nickName;
    private String realName;
    private String gender;
    private String birthDay;
    private String major;
    private String course[] = {""};
    private String courses = "";
    private String interest[] = {""};
    private String interests = "";
    private String remark;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNickName() {
        return nickName;
    }
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
    public String getRealName() {
        return realName;
    }
    public void setRealName(String realName) {
        this.realName = realName;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getBirthDay() {
        return birthDay;
    }
    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }
    public String getMajor() {
        return major;
    }
    public void setMajor(String major) {
        this.major = major;
    }
    public String[] getCourse() {
        return course;
    }
    public void setCourse(String[] course) {
        this.course = course;
    }
    public String getCourses() {
        if (course != null) {
            for(int i = 0; i < course.length; i++) {
                courses+=course[i];
            }
        }
        return courses;
    }
    public void setCourses(String courses) {
        this.courses = courses;
    }
    public String[] getInterest() {
        return interest;
    }
    public void setInterest(String[] interest) {
        this.interest = interest;
    }
    public String getInterests() {
        if (interest != null) {
            for(int i = 0; i < interest.length; i++) {
                interests+=interest[i];
            }
        }
        return interests;
    }
    public void setInterests(String interests) {
        this.interests = interests;
    }
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
}
