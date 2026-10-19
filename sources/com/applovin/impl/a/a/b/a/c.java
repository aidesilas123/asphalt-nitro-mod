package com.applovin.impl.a.a.b.a;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class c extends Activity {
    private com.applovin.impl.a.a.a.a akI;
    private TextView akJ;
    private Button akK;
    private n sdk;

    private boolean isInitialized() {
        return (this.akI == null || this.sdk == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(View view) {
        this.sdk.Co().a(this.akI, this, true);
    }

    private void tN() {
        com.applovin.impl.sdk.utils.n nVar = new com.applovin.impl.sdk.utils.n();
        nVar.dz(this.sdk.Co().a(this.akI));
        String strX = this.sdk.Co().X(this.akI.tH());
        if (strX != null) {
            nVar.dz("\nBid Response Preview:\n");
            nVar.dz(strX);
        }
        TextView textView = (TextView) findViewById(R.id.email_report_tv);
        this.akJ = textView;
        textView.setText(nVar.toString());
        this.akJ.setTextColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public void a(com.applovin.impl.a.a.a.a aVar, n nVar) {
        this.akI = aVar;
        this.sdk = nVar;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!isInitialized()) {
            finish();
            return;
        }
        setTitle(this.akI.tG() + " - " + this.akI.getNetworkName());
        setContentView(R.layout.creative_debugger_displayed_ad_detail_activity);
        tN();
        Button button = (Button) findViewById(R.id.report_ad_button);
        this.akK = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.a.a.b.a.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.a.o(view);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.creative_debugger_displayed_ad_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!isInitialized()) {
            finish();
            return false;
        }
        if (R.id.action_share != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        this.sdk.Co().a(this.akI, this, false);
        return true;
    }
}
