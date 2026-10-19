package com.nearme.plugin.framework.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import com.json.o2;
import com.nearme.plugin.framework.LogUtils;
import com.nearme.plugin.framework.PluginStatic;
import com.nearme.plugin.framework.o_b;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public abstract class PluginProxyActivity extends Activity {
    private a a;
    private int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f7696f = new AtomicBoolean(false);

    protected abstract String a();

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a aVar = this.a;
        return aVar != null ? ((Boolean) o_b.o_b(aVar, Activity.class.getName(), "dispatchTouchEvent", new Class[]{MotionEvent.class}, new Object[]{motionEvent})).booleanValue() : super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public LayoutInflater getLayoutInflater() {
        a aVar = this.a;
        return aVar != null ? aVar.c() : super.getLayoutInflater();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.a != null) {
            try {
                ClassLoader classLoader = PluginStatic.a;
                if (classLoader != null && intent != null) {
                    intent.setExtrasClassLoader(classLoader);
                }
                a aVar = this.a;
                String name = Activity.class.getName();
                Class cls = Integer.TYPE;
                o_b.o_b(aVar, name, "onActivityResult", new Class[]{cls, cls, Intent.class}, new Object[]{Integer.valueOf(i), Integer.valueOf(i2), intent});
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f7696f.compareAndSet(true, false)) {
            try {
                o_b.o_b(this.a, Activity.class.getName(), "onBackPressed", new Class[0], new Object[0]);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        try {
            FragmentManager fragmentManager = getFragmentManager();
            fragmentManager.getClass().getMethod("noteStateNotSaved", new Class[0]).invoke(fragmentManager, new Object[0]);
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        } catch (IllegalArgumentException e4) {
            e4.printStackTrace();
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        try {
            super.onBackPressed();
        } catch (IllegalStateException e8) {
            e8.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ec A[Catch: Exception -> 0x0111, TRY_LEAVE, TryCatch #3 {Exception -> 0x0111, blocks: (B:25:0x0085, B:27:0x0093, B:29:0x0097, B:32:0x009b, B:40:0x00ec, B:34:0x00a5, B:38:0x00ca), top: B:64:0x0085 }] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.plugin.framework.activity.PluginProxyActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        a aVar = this.a;
        return aVar != null ? ((Boolean) o_b.o_b(aVar, Activity.class.getName(), "onCreateOptionsMenu", new Class[]{Menu.class}, new Object[]{menu})).booleanValue() : super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a aVar = this.a;
        if (aVar != null) {
            try {
                o_b.o_b(aVar, Activity.class.getName(), "onDestroy", new Class[0], new Object[0]);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.a = null;
        }
        LogUtils.log(LogUtils.a, "PluginProxyActivity onDestroy");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        a aVar = this.a;
        boolean zBooleanValue = aVar != null ? ((Boolean) o_b.o_b(aVar, Activity.class.getName(), "onKeyDown", new Class[]{Integer.TYPE, KeyEvent.class}, new Object[]{Integer.valueOf(i), keyEvent})).booleanValue() : false;
        return !zBooleanValue ? super.onKeyDown(i, keyEvent) : zBooleanValue;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (4 == i) {
            this.f7696f.set(true);
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onMenuItemSelected", new Class[]{Integer.TYPE, MenuItem.class}, new Object[]{Integer.valueOf(i), menuItem});
        }
        return super.onMenuItemSelected(i, menuItem);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.a == null || !intent.getBooleanExtra("CLEAR_TOP", false)) {
            return;
        }
        o_b.o_b(this.a, Activity.class.getName(), "onNewIntent", new Class[]{Intent.class}, new Object[]{intent});
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        a aVar = this.a;
        return aVar != null ? ((Boolean) o_b.o_b(aVar, Activity.class.getName(), "onOptionsItemSelected", new Class[]{MenuItem.class}, new Object[]{menuItem})).booleanValue() : super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), o2.h.t0, new Class[0], new Object[0]);
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        a aVar = this.a;
        return aVar != null ? ((Boolean) o_b.o_b(aVar, Activity.class.getName(), "onPrepareOptionsMenu", new Class[]{Menu.class}, new Object[]{menu})).booleanValue() : super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        LogUtils.log("PluginProxyActivity", "onRequestPermissionsResult requestCode = " + i);
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onRequestPermissionsResult", new Class[]{Integer.TYPE, String[].class, int[].class}, new Object[]{Integer.valueOf(i), strArr, iArr});
        } else {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onRestoreInstanceState", new Class[]{Bundle.class}, new Object[]{bundle});
        }
        this.f7694d = bundle.getString("PLUGIN_NAME");
        this.f7695e = bundle.getString("LAUNCH_COMPONENT");
        this.b = bundle.getInt("USE_HOST_RESOURCES");
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), o2.h.u0, new Class[0], new Object[0]);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onSaveInstanceState", new Class[]{Bundle.class}, new Object[]{bundle});
        }
        bundle.putString("PLUGIN_NAME", this.f7694d);
        bundle.putString("LAUNCH_COMPONENT", this.f7695e);
        bundle.putInt("USE_HOST_RESOURCES", this.b);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onStart", new Class[0], new Object[0]);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onStop", new Class[0], new Object[0]);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar = this.a;
        return aVar != null ? ((Boolean) o_b.o_b(aVar, Activity.class.getName(), "dispatchTouchEvent", new Class[]{MotionEvent.class}, new Object[]{motionEvent})).booleanValue() : super.onTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onUserInteraction", new Class[0], new Object[0]);
        } else {
            super.onUserInteraction();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        a aVar = this.a;
        if (aVar != null) {
            o_b.o_b(aVar, Activity.class.getName(), "onWindowFocusChanged", new Class[]{Boolean.TYPE}, new Object[]{Boolean.valueOf(z)});
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        Bundle extras;
        if (intent.getBooleanExtra("PARAM_START_PLUGIN_INTERNAL_ACTIVITIE", false) && (extras = intent.getExtras()) != null) {
            extras.putString("PLUGIN_NAME", a());
            intent.putExtras(extras);
        }
        super.startActivityForResult(intent, i);
    }
}
