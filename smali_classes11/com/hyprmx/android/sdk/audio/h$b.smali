###### Class com.hyprmx.android.sdk.audio.h.b (com.hyprmx.android.sdk.audio.h$b)
.class public final Lcom/hyprmx/android/sdk/audio/h$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/audio/h;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/audio/e;Lcom/hyprmx/android/sdk/core/js/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/hyprmx/android/sdk/audio/h$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/audio/h;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/audio/h;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/h$b;->a:Lcom/hyprmx/android/sdk/audio/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lcom/hyprmx/android/sdk/audio/h$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/audio/h$b;->a:Lcom/hyprmx/android/sdk/audio/h;

    iget-object v2, v1, Lcom/hyprmx/android/sdk/audio/h;->a:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/audio/h$a;-><init>(Lcom/hyprmx/android/sdk/audio/h;Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method
