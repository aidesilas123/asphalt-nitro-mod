###### Class com.hyprmx.android.sdk.audio.h.a.C0279a (com.hyprmx.android.sdk.audio.h$a$a)
.class public final Lcom/hyprmx/android/sdk/audio/h$a$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/audio/h$a;-><init>(Lcom/hyprmx/android/sdk/audio/h;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Landroid/media/AudioManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/audio/h$a;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/audio/h$a;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/h$a$a;->a:Lcom/hyprmx/android/sdk/audio/h$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h$a$a;->a:Lcom/hyprmx/android/sdk/audio/h$a;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/audio/h$a;->a:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method
