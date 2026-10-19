###### Class com.applovin.exoplayer2.ay (com.applovin.exoplayer2.ay)
.class final Lcom/applovin/exoplayer2/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ay$b;,
        Lcom/applovin/exoplayer2/ay$a;
    }
.end annotation


# instance fields
.field private final I:Landroid/os/Handler;

.field private final K:Landroid/media/AudioManager;

.field private final hr:Landroid/content/Context;

.field private final ip:Lcom/applovin/exoplayer2/ay$a;

.field private iq:Lcom/applovin/exoplayer2/ay$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ir:I

.field private is:I

.field private it:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/ay$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ay;->hr:Landroid/content/Context;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ay;->I:Landroid/os/Handler;

    iput-object p3, p0, Lcom/applovin/exoplayer2/ay;->ip:Lcom/applovin/exoplayer2/ay$a;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ay;->K:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/ay;->a(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/ay;->is:I

    iget p3, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/ay;->b(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/ay;->it:Z

    new-instance p2, Lcom/applovin/exoplayer2/ay$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/applovin/exoplayer2/ay$b;-><init>(Lcom/applovin/exoplayer2/ay;Lcom/applovin/exoplayer2/ay$1;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_3b
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ay;->iq:Lcom/applovin/exoplayer2/ay$b;
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    invoke-static {p2, p3, p1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_49
    return-void
.end method

.method private static a(Landroid/media/AudioManager;I)I
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/media/AudioManager;I)Z
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ay;->a(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/ay;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ay;->I:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/ay;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ay;->dc()V

    return-void
.end method

.method private dc()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->K:Landroid/media/AudioManager;

    iget v1, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ay;->a(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/ay;->K:Landroid/media/AudioManager;

    iget v2, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/ay;->b(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Lcom/applovin/exoplayer2/ay;->is:I

    if-ne v2, v0, :cond_18

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ay;->it:Z

    if-eq v2, v1, :cond_21

    :cond_18
    iput v0, p0, Lcom/applovin/exoplayer2/ay;->is:I

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ay;->it:Z

    iget-object v2, p0, Lcom/applovin/exoplayer2/ay;->ip:Lcom/applovin/exoplayer2/ay$a;

    invoke-interface {v2, v0, v1}, Lcom/applovin/exoplayer2/ay$a;->f(IZ)V

    :cond_21
    return-void
.end method


# virtual methods
.method public aj(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ay;->dc()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->ip:Lcom/applovin/exoplayer2/ay$a;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/ay$a;->ai(I)V

    return-void
.end method

.method public da()I
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->K:Landroid/media/AudioManager;

    iget v1, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public db()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->K:Landroid/media/AudioManager;

    iget v1, p0, Lcom/applovin/exoplayer2/ay;->ir:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->iq:Lcom/applovin/exoplayer2/ay$b;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Lcom/applovin/exoplayer2/ay;->hr:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v1, v2, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ay;->iq:Lcom/applovin/exoplayer2/ay$b;

    :cond_15
    return-void
.end method

###### Class com.applovin.exoplayer2.ay.AnonymousClass1 (com.applovin.exoplayer2.ay$1)
.class synthetic Lcom/applovin/exoplayer2/ay$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.ay.a (com.applovin.exoplayer2.ay$a)
.class public interface abstract Lcom/applovin/exoplayer2/ay$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract ai(I)V
.end method

.method public abstract f(IZ)V
.end method

###### Class com.applovin.exoplayer2.ay.b (com.applovin.exoplayer2.ay$b)
.class final Lcom/applovin/exoplayer2/ay$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic iu:Lcom/applovin/exoplayer2/ay;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/ay;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/ay$b;->iu:Lcom/applovin/exoplayer2/ay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ay;Lcom/applovin/exoplayer2/ay$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ay$b;-><init>(Lcom/applovin/exoplayer2/ay;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/exoplayer2/ay;)V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/ay$b;->e(Lcom/applovin/exoplayer2/ay;)V

    return-void
.end method

.method private static synthetic e(Lcom/applovin/exoplayer2/ay;)V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/ay;->d(Lcom/applovin/exoplayer2/ay;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/exoplayer2/ay$b;->iu:Lcom/applovin/exoplayer2/ay;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ay;->c(Lcom/applovin/exoplayer2/ay;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/ay$b;->iu:Lcom/applovin/exoplayer2/ay;

    new-instance v0, Lcom/applovin/exoplayer2/o0;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/o0;-><init>(Lcom/applovin/exoplayer2/ay;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.applovin.exoplayer2.o0 (com.applovin.exoplayer2.o0)
.class public final synthetic Lcom/applovin/exoplayer2/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/ay;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/ay;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/o0;->a:Lcom/applovin/exoplayer2/ay;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/o0;->a:Lcom/applovin/exoplayer2/ay;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ay$b;->a(Lcom/applovin/exoplayer2/ay;)V

    return-void
.end method
