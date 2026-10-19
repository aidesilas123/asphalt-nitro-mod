package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.webkit.ProxyConfig;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.NotificationHandlerActivity;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzefa extends zzbth {
    private final Context zza;
    private final zzdtp zzb;
    private final zzcbs zzc;
    private final zzeep zzd;
    private final zzfje zze;
    private String zzf;
    private String zzg;

    @VisibleForTesting
    public zzefa(Context context, zzeep zzeepVar, zzcbs zzcbsVar, zzdtp zzdtpVar, zzfje zzfjeVar) {
        this.zza = context;
        this.zzb = zzdtpVar;
        this.zzc = zzcbsVar;
        this.zzd = zzeepVar;
        this.zze = zzfjeVar;
    }

    public static void zzc(Context context, zzdtp zzdtpVar, zzfje zzfjeVar, zzeep zzeepVar, String str, String str2, Map map) {
        String strZza;
        String str3 = true != com.google.android.gms.ads.internal.zzt.zzo().zzz(context) ? "offline" : CustomTabsCallback.ONLINE_EXTRAS_KEY;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziv)).booleanValue() || zzdtpVar == null) {
            zzfjd zzfjdVarZzb = zzfjd.zzb(str2);
            zzfjdVarZzb.zza("gqi", str);
            zzfjdVarZzb.zza("device_connectivity", str3);
            zzfjdVarZzb.zza("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zzfjdVarZzb.zza((String) entry.getKey(), (String) entry.getValue());
            }
            strZza = zzfjeVar.zza(zzfjdVarZzb);
        } else {
            zzdto zzdtoVarZza = zzdtpVar.zza();
            zzdtoVarZza.zzb("gqi", str);
            zzdtoVarZza.zzb("action", str2);
            zzdtoVarZza.zzb("device_connectivity", str3);
            zzdtoVarZza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            for (Map.Entry entry2 : map.entrySet()) {
                zzdtoVarZza.zzb((String) entry2.getKey(), (String) entry2.getValue());
            }
            strZza = zzdtoVarZza.zzf();
        }
        zzeepVar.zzd(new zzeer(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), str, strZza, 2));
    }

    @VisibleForTesting
    public static final PendingIntent zzo(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra(ShareConstants.MEDIA_URI, str3);
        if (Build.VERSION.SDK_INT < 29 || !str.equals("offline_notification_clicked")) {
            intent.setClassName(context, AdService.CLASS_NAME);
            return zzfre.zzb(context, 0, intent, zzfre.zza | 1073741824, 0);
        }
        intent.setClassName(context, NotificationHandlerActivity.CLASS_NAME);
        return zzfre.zza(context, 0, intent, 201326592);
    }

    private static String zzp(int i, String str) {
        Resources resourcesZze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        return resourcesZze == null ? str : resourcesZze.getString(i);
    }

    private final void zzq(String str, String str2, Map map) {
        zzc(this.zza, this.zzb, this.zze, this.zzd, str, str2, map);
    }

    private final void zzr() {
        try {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzy(this.zza).zzf(ObjectWrapper.wrap(this.zza), this.zzg, this.zzf)) {
                return;
            }
        } catch (RemoteException e2) {
            zzcbn.zzh("Failed to schedule offline notification poster.", e2);
        }
        this.zzd.zzc(this.zzf);
        zzq(this.zzf, "offline_notification_worker_not_scheduled", zzfwx.zzd());
    }

    private final void zzs(final Activity activity, @Nullable final com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        com.google.android.gms.ads.internal.zzt.zzp();
        if (NotificationManagerCompat.from(activity).areNotificationsEnabled()) {
            zzr();
            zzt(activity, zzlVar);
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
                zzq(this.zzf, "asnpdi", zzfwx.zzd());
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            AlertDialog.Builder builderZzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(activity);
            builderZzJ.setTitle(zzp(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(zzp(R.string.notifications_permission_confirm, "Allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzees
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zza.zzd(activity, zzlVar, dialogInterface, i);
                }
            }).setNegativeButton(zzp(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeet
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zza.zzj(zzlVar, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeeu
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.zza.zzk(zzlVar, dialogInterface);
                }
            });
            builderZzJ.create().show();
            zzq(this.zzf, "rtsdi", zzfwx.zzd());
        }
    }

    private final void zzt(Activity activity, @Nullable final com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        String strZzp = zzp(R.string.offline_opt_in_confirmation, "You'll get a notification with the link when you're back online");
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder builderZzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(activity);
        builderZzJ.setMessage(strZzp).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeey
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                com.google.android.gms.ads.internal.overlay.zzl zzlVar2 = zzlVar;
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        });
        AlertDialog alertDialogCreate = builderZzJ.create();
        alertDialogCreate.show();
        Timer timer = new Timer();
        timer.schedule(new zzeez(this, alertDialogCreate, timer, zzlVar), 3000L);
    }

    final /* synthetic */ void zzd(Activity activity, com.google.android.gms.ads.internal.overlay.zzl zzlVar, DialogInterface dialogInterface, int i) {
        HashMap map = new HashMap();
        map.put("dialog_action", "confirm");
        zzq(this.zzf, "rtsdc", map);
        activity.startActivity(com.google.android.gms.ads.internal.zzt.zzq().zzg(activity));
        zzr();
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra(ShareConstants.MEDIA_URI);
            boolean zZzz = com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zza);
            HashMap map = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                map.put("offline_notification_action", "offline_notification_clicked");
                c = true == zZzz ? (char) 1 : (char) 2;
                map.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                map.put("olaih", String.valueOf(stringExtra3.startsWith(ProxyConfig.MATCH_HTTP)));
                try {
                    Intent launchIntentForPackage = this.zza.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(DriveFile.MODE_READ_ONLY);
                    this.zza.startActivity(launchIntentForPackage);
                    map.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    map.put("olaa", "olaf");
                }
            } else {
                map.put("offline_notification_action", "offline_notification_dismissed");
            }
            zzq(stringExtra2, "offline_notification_action", map);
            try {
                SQLiteDatabase writableDatabase = this.zzd.getWritableDatabase();
                if (c == 1) {
                    this.zzd.zzg(writableDatabase, this.zzc, stringExtra2);
                } else {
                    zzeep.zzi(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                zzcbn.zzg("Failed to get writable offline buffering database: ".concat(e2.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                zzefc zzefcVar = (zzefc) ObjectWrapper.unwrap(iObjectWrapper);
                Activity activityZza = zzefcVar.zza();
                com.google.android.gms.ads.internal.overlay.zzl zzlVarZzb = zzefcVar.zzb();
                HashMap map = new HashMap();
                if (iArr[i] == 0) {
                    map.put("dialog_action", "confirm");
                    zzr();
                    zzt(activityZza, zzlVarZzb);
                } else {
                    map.put("dialog_action", "dismiss");
                    if (zzlVarZzb != null) {
                        zzlVarZzb.zzb();
                    }
                }
                zzq(this.zzf, "asnpdc", map);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzg(IObjectWrapper iObjectWrapper) {
        zzefc zzefcVar = (zzefc) ObjectWrapper.unwrap(iObjectWrapper);
        final Activity activityZza = zzefcVar.zza();
        final com.google.android.gms.ads.internal.overlay.zzl zzlVarZzb = zzefcVar.zzb();
        this.zzf = zzefcVar.zzc();
        this.zzg = zzefcVar.zzd();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzio)).booleanValue()) {
            zzs(activityZza, zzlVarZzb);
            return;
        }
        zzq(this.zzf, "dialog_impression", zzfwx.zzd());
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder builderZzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(activityZza);
        builderZzJ.setTitle(zzp(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(zzp(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(zzp(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeev
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.zza.zzl(activityZza, zzlVarZzb, dialogInterface, i);
            }
        }).setNegativeButton(zzp(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeew
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.zza.zzm(zzlVarZzb, dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeex
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.zza.zzn(zzlVarZzb, dialogInterface);
            }
        });
        builderZzJ.create().show();
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzh() {
        final zzcbs zzcbsVar = this.zzc;
        this.zzd.zze(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzeei
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) throws Exception {
                zzeep.zzb(zzcbsVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) {
        String str3;
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        com.google.android.gms.ads.internal.zzt.zzq().zzh(context, "offline_notification_channel", "AdMob Offline Notifications");
        NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(context, "offline_notification_channel").setContentTitle(zzp(R.string.offline_notification_title, "View the ad you saved when you were offline")).setContentText(zzp(R.string.offline_notification_text, "Tap to open ad")).setAutoCancel(true).setDeleteIntent(zzo(context, "offline_notification_dismissed", str2, str)).setContentIntent(zzo(context, "offline_notification_clicked", str2, str)).setSmallIcon(context.getApplicationInfo().icon);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        HashMap map = new HashMap();
        try {
            notificationManager.notify(str2, 54321, smallIcon.build());
            str3 = "offline_notification_impression";
        } catch (IllegalArgumentException e2) {
            map.put("notification_not_shown_reason", e2.getMessage());
            str3 = "offline_notification_failed";
        }
        zzq(str2, str3, map);
    }

    final /* synthetic */ void zzj(com.google.android.gms.ads.internal.overlay.zzl zzlVar, DialogInterface dialogInterface, int i) {
        this.zzd.zzc(this.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzq(this.zzf, "rtsdc", map);
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }

    final /* synthetic */ void zzk(com.google.android.gms.ads.internal.overlay.zzl zzlVar, DialogInterface dialogInterface) {
        this.zzd.zzc(this.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzq(this.zzf, "rtsdc", map);
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }

    final /* synthetic */ void zzl(Activity activity, com.google.android.gms.ads.internal.overlay.zzl zzlVar, DialogInterface dialogInterface, int i) {
        HashMap map = new HashMap();
        map.put("dialog_action", "confirm");
        zzq(this.zzf, "dialog_click", map);
        zzs(activity, zzlVar);
    }

    final /* synthetic */ void zzm(com.google.android.gms.ads.internal.overlay.zzl zzlVar, DialogInterface dialogInterface, int i) {
        this.zzd.zzc(this.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzq(this.zzf, "dialog_click", map);
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }

    final /* synthetic */ void zzn(com.google.android.gms.ads.internal.overlay.zzl zzlVar, DialogInterface dialogInterface) {
        this.zzd.zzc(this.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzq(this.zzf, "dialog_click", map);
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }
}
