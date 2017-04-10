package com.example.sure.twotouchmail;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        Button btnPickup = (Button) this.findViewById(R.id.button1);
        btnPickup.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                Intent intent = new Intent(MainActivity.this, PickupActivity.class);
                startActivity(intent);
            }
        });

        Button btnNoDinner = (Button) this.findViewById(R.id.button2);
        btnNoDinner.setOnClickListener(new View.OnClickListener(){
        @Override
        public void onClick(View v){
            Intent intent = new Intent(MainActivity.this, NoDinnerActivity.class);
            startActivity(intent);
        }
        });

    }
}
