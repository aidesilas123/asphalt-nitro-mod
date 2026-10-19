###### Class com.google.firebase.iid.FirebaseInstanceIdService (com.google.firebase.iid.FirebaseInstanceIdService)
.class public Lcom/google/firebase/iid/FirebaseInstanceIdService;
.super Landroid/app/Service;
.source "com.google.firebase:firebase-iid@@21.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
