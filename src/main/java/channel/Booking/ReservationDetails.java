package channel.Booking;

import java.sql.Date;

public class ReservationDetails {
    private int reservationID;
    private String doctorName;
    private String specialization;
    private String hospital;
    private String day;
    private String time;
    private String patientName;
    private String phoneNumber;

    public ReservationDetails(int reservationID, String doctorName, String specialization, String hospital, String day,
            String time, String patientName, String phoneNumber) {
        this.reservationID = reservationID;
        this.doctorName = doctorName;
        this.specialization = specialization;
        this.hospital = hospital;
        this.day = day;
        this.time = time;
        this.patientName = patientName;
        this.phoneNumber = phoneNumber;
    }

    public int getReservationID() {
        return reservationID;
    }

    

    public String getDoctorName() {
        return doctorName;
    }

    

    public String getSpecialization() {
        return specialization;
    }

    

    public String getHospital() {
        return hospital;
    }

    

    public String getDay() {
        return day;
    }

   

    public String getTime() {
        return time;
    }

    

    public String getPatientName() {
        return patientName;
    }

    

    public String getPhoneNumber() {
        return phoneNumber;
    }

    

}
