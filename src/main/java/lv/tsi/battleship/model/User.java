package lv.tsi.battleship.model;

public class User {
    private String name;
    private Field myField = new Field();
    private Field enemyField = new Field();
    private boolean ready = false;



    public String getName() {
        return name;
    }

    public Field getMyField() {
        return myField;
    }

    public Field getEnemyField() {
        return enemyField;
    }


    public void setName(String name) {
        this.name = name;

    }

    public boolean isReady() {
        return ready;
    }

    public void setReady(boolean ready) {
        this.ready = ready;
    }
}
