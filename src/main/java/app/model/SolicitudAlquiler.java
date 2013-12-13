package app.model;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "solicitud_alquiler")
public class SolicitudAlquiler implements Serializable {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "hora_inicio")
    private String horaInicio;

    @Column(name = "hora_fin")
    private  String horaFin;

    @Column(name = "dia")
    private String dia;

    @Column(name = "servicios")
    private String servicios;

    @Column(name = "estado")
    private Integer estado;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "id_socio")
    private Persona persona;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "id_campo")
    private Campo campo;

    public SolicitudAlquiler() {}

    public SolicitudAlquiler(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }	

    public void setId(Long id) {
        this.id = id;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    
    public String getServicios() {
        return servicios;
    }	

    public void setServicios(String servicios) {
        this.servicios = servicios;
    }

    public Integer getEstado() {
        return estado;
    }	

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    public Campo getCampo() {
        return campo;
    }

    public void setCampo(Campo campo) {
        this.campo = campo;
    }
    
    
    public Evento getEvento (){
        String aprobado = (estado==1)?"aprobado":"no aprobado";
        
        
        
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date horaI = null;
        Date horaF = null;
        
        try {
            horaI = formato.parse(dia+" "+horaInicio);
            horaF = formato.parse(dia+" "+horaFin);
        } catch (ParseException ex) {
            Logger.getLogger(SolicitudAlquiler.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Calendar calendarInicio = Calendar.getInstance();
        Calendar calendarFin = Calendar.getInstance();
        
        calendarInicio.setTime(horaI);
        calendarFin.setTime(horaF);
        
        long inicio = calendarInicio.getTimeInMillis()/1000;
        long fin = calendarFin.getTimeInMillis()/1000;
        
        Evento evento = new Evento(inicio,fin,aprobado,false);
        return evento;
    }
}