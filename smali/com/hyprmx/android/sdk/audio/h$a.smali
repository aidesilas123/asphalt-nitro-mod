###### Class com.hyprmx.android.sdk.audio.h.a (com.hyprmx.android.sdk.audio.h$a)
.class public final Lcom/hyprmx/android/sdk/audio/h$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/audio/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlin/i;

.field public final c:Lcom/hyprmx/android/sdk/audio/i;

.field public final synthetic d:Lcom/hyprmx/android/sdk/audio/h;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/audio/h;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/h$a;->d:Lcom/hyprmx/android/sdk/audio/h;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/audio/h$a;->a:Landroid/content/Context;

    new-instance p1, Lcom/hyprmx/android/sdk/audio/h$a$a;

    invoke-direct {p1, p0}, Lcom/hyprmx/android/sdk/audio/h$a$a;-><init>(Lcom/hyprmx/android/sdk/audio/h$a;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/h$a;->b:Lkotlin/i;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/audio/h$a;->a()Landroid/media/AudioManager;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/audio/h$a;->a(Landroid/media/AudioManager;)I

    move-result p1

    new-instance p2, Lcom/hyprmx/android/sdk/audio/i;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/audio/h$a;->a()Landroid/media/AudioManager;

    move-result-object p3

    invoke-static {p3}, Lcom/hyprmx/android/sdk/audio/h$a;->b(Landroid/media/AudioManager;)I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/hyprmx/android/sdk/audio/i;-><init>(II)V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/audio/h$a;->c:Lcom/hyprmx/android/sdk/audio/i;

    return-void
.end method

.method public static a(Landroid/media/AudioManager;)I
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/media/AudioManager;)I
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h$a;->b:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public final onChange(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/audio/h$a;->d:Lcom/hyprmx/android/sdk/audio/h;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/audio/h;->b:Lcom/hyprmx/android/sdk/audio/e;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h$a;->c:Lcom/hyprmx/android/sdk/audio/i;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/audio/h$a;->a()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget v2, v0, Lcom/hyprmx/android/sdk/audio/i;->b:I

    iget v0, v0, Lcom/hyprmx/android/sdk/audio/i;->c:I

    new-instance v3, Lcom/hyprmx/android/sdk/audio/i;

    invoke-direct {v3, v1, v2, v0}, Lcom/hyprmx/android/sdk/audio/i;-><init>(III)V

    invoke-interface {p1, v3}, Lcom/hyprmx/android/sdk/audio/e;->a(Lcom/hyprmx/android/sdk/audio/i;)V

    return-void
.end method
