package channel.Timetable;

public class DocList {
    private int id;
    private String doctorId;
    private String doctorName;
    private String specialization;
    private String hospital;
    private String day;
    private String time;

    public DocList(int id, String doctorId, String doctorName, String specialization, String hospital, String day, String time) {
        this.id = id;
        this.doctorId = doctorId;
        this.doctorName = doctorName;
        this.specialization = specialization;
        this.hospital = hospital;
        this.day = day;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    
    public String getDoctorId() {
        return doctorId;
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

    
}

