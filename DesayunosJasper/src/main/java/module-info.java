module com.mycompany.desayunosjasper {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.swing;
    requires java.base;
    requires org.hibernate.orm.core;
    requires java.naming;
    requires java.sql;
    requires java.persistence;
    requires jasperreports; 

    opens com.mycompany.desayunosjasper to javafx.fxml, java.sql, javafx.swing;
    exports com.mycompany.desayunosjasper;
    
}
