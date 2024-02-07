package monprojet.entity;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity
public class Participation {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;
    
    @ManyToOne
    private Employe contributeur;

    @ManyToOne
    private Projet affectation;

    @NonNull
    private String role;

    @NonNull
    private Float pourcentage;

}