package lv.tsi.battleship.model;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;
import java.util.HashMap;
import java.util.Map;

@Named
@RequestScoped
public class TempShipsHolder {
   private Map<String, Boolean> ships = new HashMap<>();

    public Map<String, Boolean> getShips() {
        return ships;
    }

    public void addShip (String addr) {
       ships.put(addr, true);


   }
}
