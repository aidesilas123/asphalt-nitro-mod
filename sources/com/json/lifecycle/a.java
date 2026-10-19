package com.json.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public class a extends Fragment {
    private InterfaceC0356a a;

    /* JADX INFO: renamed from: com.ironsource.lifecycle.a$a, reason: collision with other inner class name */
    interface InterfaceC0356a {
        void a(Activity activity);

        void b(Activity activity);

        void onResume(Activity activity);
    }

    static a a(Activity activity) {
        return (a) activity.getFragmentManager().findFragmentByTag("com.ironsource.lifecycle.IronsourceLifecycleFragment");
    }

    private void b(InterfaceC0356a interfaceC0356a) {
        if (interfaceC0356a != null) {
            interfaceC0356a.b(getActivity());
        }
    }

    static void c(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager == null || fragmentManager.findFragmentByTag("com.ironsource.lifecycle.IronsourceLifecycleFragment") != null) {
            return;
        }
        fragmentManager.beginTransaction().add(new a(), "com.ironsource.lifecycle.IronsourceLifecycleFragment").commit();
        fragmentManager.executePendingTransactions();
    }

    private void d(InterfaceC0356a interfaceC0356a) {
        if (interfaceC0356a != null) {
            interfaceC0356a.onResume(getActivity());
        }
    }

    private void e(InterfaceC0356a interfaceC0356a) {
        if (interfaceC0356a != null) {
            interfaceC0356a.a(getActivity());
        }
    }

    void f(InterfaceC0356a interfaceC0356a) {
        this.a = interfaceC0356a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(this.a);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d(this.a);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        e(this.a);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
    }
}
