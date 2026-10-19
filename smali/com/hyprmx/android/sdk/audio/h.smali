###### Class com.hyprmx.android.sdk.audio.h (com.hyprmx.android.sdk.audio.h)
.class public final Lcom/hyprmx/android/sdk/audio/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/audio/b;
.implements Lcom/hyprmx/android/sdk/audio/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/audio/h$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/hyprmx/android/sdk/audio/e;

.field public final c:Lkotlin/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/audio/e;Lcom/hyprmx/android/sdk/core/js/a;)V
    .registers 5

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedAM"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsEngine"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/audio/h;->b:Lcom/hyprmx/android/sdk/audio/e;

    new-instance p1, Lcom/hyprmx/android/sdk/audio/d;

    invoke-direct {p1, p3, p0}, Lcom/hyprmx/android/sdk/audio/d;-><init>(Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/audio/b;)V

    new-instance p1, Lcom/hyprmx/android/sdk/audio/h$b;

    invoke-direct {p1, p0}, Lcom/hyprmx/android/sdk/audio/h$b;-><init>(Lcom/hyprmx/android/sdk/audio/h;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/audio/h;->c:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hyprmx/android/sdk/audio/i;)V
    .registers 3

    const-string v0, "volume"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h;->b:Lcom/hyprmx/android/sdk/audio/e;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/audio/e;->a(Lcom/hyprmx/android/sdk/audio/i;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hyprmx/android/sdk/audio/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/audio/h;->c:Lkotlin/i;

    invoke-interface {v1}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyprmx/android/sdk/audio/h$a;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_28

    :cond_17
    iget-object p1, p0, Lcom/hyprmx/android/sdk/audio/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/h$a;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_28
    return-void
.end method

.method public final getAudioCategory()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getIsMuted()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getVolume()D
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/h;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/audio/h$a;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/audio/h$a;->a()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-double v3, v1

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/audio/h$a;->a()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v3, v0

    return-wide v3
.end method

.method public final startAudioSession()V
    .registers 1

    return-void
.end method

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
