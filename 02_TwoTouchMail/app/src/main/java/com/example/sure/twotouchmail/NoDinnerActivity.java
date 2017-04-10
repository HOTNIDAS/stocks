package com.example.sure.twotouchmail;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class NoDinnerActivity extends Activity implements View.OnClickListener, View.OnLongClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_no_dinner);

        Button btnSend = (Button) this.findViewById(R.id.button);
        btnSend.setOnClickListener(this);
        btnSend.setOnLongClickListener(this);

    }

    @Override
    public void onClick(View v){
        EditText edit1 = (EditText) findViewById(R.id.editText);
        String title = edit1.getText().toString();
        Resources res = getResources();
        Uri uri = Uri.parse("mailto:" + res.getString(R.string.mail_to).toString());
        Intent intent = new Intent(Intent.ACTION_SENDTO, uri);
        intent.putExtra(Intent.EXTRA_SUBJECT, title);
        intent.putExtra(Intent.EXTRA_TEXT, "Ill be late so I dont need dinner");
        startActivity(intent);

    }

    @Override
    public boolean onLongClick(View v) {
        EditText edit1 = (EditText) findViewById(R.id.editText);
        String title = edit1.getText().toString();
        Resources res = getResources();
        Uri uri = Uri.parse("mailto:" + res.getString(R.string.mail_to).toString());
        Intent intent = new Intent(Intent.ACTION_SENDTO, uri);
        intent.putExtra(Intent.EXTRA_SUBJECT, title);
        intent.putExtra(Intent.EXTRA_TEXT, "Im sorry\nabout I cant eat dinner together\nbecause Ill be late\nThanks anyway");
        startActivity(intent);
        return true;
    }
}
