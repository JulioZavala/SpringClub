
package app.model;


public class Evento {
 
    private long start;
    private long end;
    private String title;
    private boolean allDay;

    
    public Evento(long start, long end, String title, boolean allDay) {
        this.start = start;
        this.end = end;
        this.title = title;
        this.allDay = allDay;
    }
    
    
    
}
