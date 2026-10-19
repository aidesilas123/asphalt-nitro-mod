###### Class com.gameloft.android.ANMP.GloftAGHM.GoogleFirebase.GoogleFirebase (com.gameloft.android.ANMP.GloftAGHM.GoogleFirebase.GoogleFirebase)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;
.super Ljava/lang/Object;
.source "GoogleFirebase.java"


# static fields
.field public static a:Landroid/content/Context;

.field private static b:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public static imAliveFirebase()V
    .registers 0

    return-void
.end method

.method public static resetAnalyticsDataFirebase()V
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->b()V

    return-void
.end method

.method public static sendDummyEventFirebase()V
    .registers 3

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Action"

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Label"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Value"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "DUMMY_EVENT_TRACK"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static trackEventFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Label"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1f

    const-string p1, "Value"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/GoogleFirebase/GoogleFirebase;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method
