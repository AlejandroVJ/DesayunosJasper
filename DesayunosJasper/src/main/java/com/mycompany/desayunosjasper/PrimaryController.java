package com.mycompany.desayunosjasper;

import java.io.IOException;
import java.io.Serializable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import models.Pedidos;
import org.hibernate.Session;

public class PrimaryController implements Serializable {

//    @FXML
//    private Button cartaBtn;
//    @FXML
//    private Button pedHoyBtn;
    @FXML
    private TableView<Pedidos> tabla;
    @FXML
    private TableColumn<Pedidos, Integer> idTabla;
    @FXML
    private TableColumn<Pedidos, String> clienteTable;
    @FXML
    private TableColumn<Pedidos, String> cursoTabla;
    @FXML
    private TableColumn<Pedidos, String> fechaTabla;
    @FXML
    private TableColumn<Pedidos, String> estadoTabla;
    
    Session s = HibernateUtil.getSessionFactory().openSession();
    
    ObservableList<Pedidos> list = FXCollections.observableArrayList();
    @FXML
    private Button cartaBtn;
    @FXML
    private Button pedHoyBtn;
    
    
    
    

    private void switchToSecondary() throws IOException {
        App.setRoot("secondary");
    }
}
