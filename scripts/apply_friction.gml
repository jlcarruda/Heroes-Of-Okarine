///applyFriction(spd)
var amount = argument0;
if(!self.left && !self.right) {
    if (hspd != 0 ) {
        if(abs(hspd) > amount){
            if(hspd > 0) {
                hspd -= amount;
            } else {
                hspd += amount;
            }    
        } else {
            hspd = 0;
        }    
    }
}
