package dagger.android;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DaggerActivity extends Activity implements e {
    d<Object> a;

    @Override // dagger.android.e
    public a<Object> a() {
        return this.a;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        AndroidInjection.inject(this);
        super.onCreate(bundle);
    }
}
