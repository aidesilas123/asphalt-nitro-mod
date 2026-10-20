###### Class com.google.android.ump.ConsentDebugSettings (com.google.android.ump.ConsentDebugSettings)
.class public Lcom/google/android/ump/ConsentDebugSettings;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ump/ConsentDebugSettings$Builder;,
        Lcom/google/android/ump/ConsentDebugSettings$DebugGeography;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method synthetic constructor <init>(ZLcom/google/android/ump/ConsentDebugSettings$Builder;Lcom/google/android/ump/zza;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/ump/ConsentDebugSettings;->a:Z

    invoke-static {p2}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->a(Lcom/google/android/ump/ConsentDebugSettings$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/ump/ConsentDebugSettings;->b:I

    return-void
.end method


# virtual methods
.method public getDebugGeography()I
    .registers 2

    iget v0, p0, Lcom/google/android/ump/ConsentDebugSettings;->b:I

    return v0
.end method

.method public isTestDevice()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/ump/ConsentDebugSettings;->a:Z

    return v0
.end method
