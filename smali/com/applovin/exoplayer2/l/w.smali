###### Class com.applovin.exoplayer2.l.w (com.applovin.exoplayer2.l.w)
.class public final Lcom/applovin/exoplayer2/l/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/l/w$d;,
        Lcom/applovin/exoplayer2/l/w$c;,
        Lcom/applovin/exoplayer2/l/w$a;,
        Lcom/applovin/exoplayer2/l/w$b;
    }
.end annotation


# static fields
.field private static acF:Lcom/applovin/exoplayer2/l/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final Zl:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/exoplayer2/l/w$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private aaa:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "networkTypeLock"
    .end annotation
.end field

.field private final acG:Landroid/os/Handler;

.field private final acH:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/w;->acG:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/w;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/w;->acH:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/l/w;->aaa:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/applovin/exoplayer2/l/w$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/applovin/exoplayer2/l/w$c;-><init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;)I
    .registers 2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_1c

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_9
    sget p0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_12

    const/16 p0, 0x9

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_16
    const/4 p0, 0x5

    return p0

    :pswitch_18
    const/4 p0, 0x4

    return p0

    :pswitch_1a
    const/4 p0, 0x3

    return p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_7
        :pswitch_18
        :pswitch_14
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/l/w;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/w;->fw(I)V

    return-void
.end method

.method private synthetic b(Lcom/applovin/exoplayer2/l/w$b;)V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/w;->pc()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/l/w$b;->onNetworkTypeChanged(I)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/w;->b(Lcom/applovin/exoplayer2/l/w$b;)V

    return-void
.end method

.method private fw(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w;->acH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/applovin/exoplayer2/l/w;->aaa:I

    if-ne v1, p1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iput p1, p0, Lcom/applovin/exoplayer2/l/w;->aaa:I

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_31

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/l/w$b;

    if-eqz v2, :cond_2a

    invoke-interface {v2, p1}, Lcom/applovin/exoplayer2/l/w$b;->onNetworkTypeChanged(I)V

    goto :goto_12

    :cond_2a
    iget-object v2, p0, Lcom/applovin/exoplayer2/l/w;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_30
    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public static declared-synchronized k(Landroid/content/Context;)Lcom/applovin/exoplayer2/l/w;
    .registers 3

    const-class v0, Lcom/applovin/exoplayer2/l/w;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/exoplayer2/l/w;->acF:Lcom/applovin/exoplayer2/l/w;

    if-nez v1, :cond_e

    new-instance v1, Lcom/applovin/exoplayer2/l/w;

    invoke-direct {v1, p0}, Lcom/applovin/exoplayer2/l/w;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/applovin/exoplayer2/l/w;->acF:Lcom/applovin/exoplayer2/l/w;

    :cond_e
    sget-object p0, Lcom/applovin/exoplayer2/l/w;->acF:Lcom/applovin/exoplayer2/l/w;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static l(Landroid/content/Context;)I
    .registers 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_10} :catch_3c

    const/4 v0, 0x1

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3c

    :cond_1a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_37

    if-eq v1, v0, :cond_35

    const/4 v0, 0x4

    if-eq v1, v0, :cond_37

    const/4 v0, 0x5

    if-eq v1, v0, :cond_37

    const/4 p0, 0x6

    if-eq v1, p0, :cond_34

    const/16 p0, 0x9

    if-eq v1, p0, :cond_32

    const/16 p0, 0x8

    return p0

    :cond_32
    const/4 p0, 0x7

    return p0

    :cond_34
    return v0

    :cond_35
    const/4 p0, 0x2

    return p0

    :cond_37
    invoke-static {p0}, Lcom/applovin/exoplayer2/l/w;->a(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0

    :catch_3c
    :cond_3c
    :goto_3c
    return v0
.end method

.method static synthetic m(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/w;->l(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private pd()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/w;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/l/w$b;)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/w;->pd()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w;->Zl:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w;->acG:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/exoplayer2/l/d0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/l/d0;-><init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pc()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w;->acH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/applovin/exoplayer2/l/w;->aaa:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

###### Class com.applovin.exoplayer2.l.w.AnonymousClass1 (com.applovin.exoplayer2.l.w$1)
.class synthetic Lcom/applovin/exoplayer2/l/w$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.l.w.a (com.applovin.exoplayer2.l.w$a)
.class public final Lcom/applovin/exoplayer2/l/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile acI:Z


# direct methods
.method static synthetic pe()Z
    .registers 1

    sget-boolean v0, Lcom/applovin/exoplayer2/l/w$a;->acI:Z

    return v0
.end method

###### Class com.applovin.exoplayer2.l.w.b (com.applovin.exoplayer2.l.w$b)
.class public interface abstract Lcom/applovin/exoplayer2/l/w$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract onNetworkTypeChanged(I)V
.end method

###### Class com.applovin.exoplayer2.l.w.c (com.applovin.exoplayer2.l.w$c)
.class final Lcom/applovin/exoplayer2/l/w$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic acJ:Lcom/applovin/exoplayer2/l/w;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/l/w;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/w$c;->acJ:Lcom/applovin/exoplayer2/l/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/w$c;-><init>(Lcom/applovin/exoplayer2/l/w;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/w;->m(Landroid/content/Context;)I

    move-result p2

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3c

    invoke-static {}, Lcom/applovin/exoplayer2/l/w$a;->pe()Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v1, 0x5

    if-ne p2, v1, :cond_3c

    :try_start_13
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/applovin/exoplayer2/l/w$d;

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/w$c;->acJ:Lcom/applovin/exoplayer2/l/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/l/w$d;-><init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$1;)V

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_32

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_37

    :cond_32
    const/high16 v0, 0x100000

    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_37
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    :cond_3c
    iget-object p1, p0, Lcom/applovin/exoplayer2/l/w$c;->acJ:Lcom/applovin/exoplayer2/l/w;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/w;->a(Lcom/applovin/exoplayer2/l/w;I)V

    return-void
.end method

###### Class com.applovin.exoplayer2.l.w.d (com.applovin.exoplayer2.l.w$d)
.class Lcom/applovin/exoplayer2/l/w$d;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic acJ:Lcom/applovin/exoplayer2/l/w;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/l/w;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/w$d;->acJ:Lcom/applovin/exoplayer2/l/w;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/w$d;-><init>(Lcom/applovin/exoplayer2/l/w;)V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w$d;->acJ:Lcom/applovin/exoplayer2/l/w;

    if-eqz p1, :cond_15

    const/16 p1, 0xa

    goto :goto_16

    :cond_15
    const/4 p1, 0x5

    :goto_16
    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/w;->a(Lcom/applovin/exoplayer2/l/w;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1    # Landroid/telephony/ServiceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    const-string v0, "nrState=CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "nrState=NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    :goto_1d
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/w$d;->acJ:Lcom/applovin/exoplayer2/l/w;

    if-eqz p1, :cond_24

    const/16 p1, 0xa

    goto :goto_25

    :cond_24
    const/4 p1, 0x5

    :goto_25
    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/w;->a(Lcom/applovin/exoplayer2/l/w;I)V

    return-void
.end method

###### Class com.applovin.exoplayer2.l.d0 (com.applovin.exoplayer2.l.d0)
.class public final synthetic Lcom/applovin/exoplayer2/l/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/l/w;

.field public final synthetic b:Lcom/applovin/exoplayer2/l/w$b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/d0;->a:Lcom/applovin/exoplayer2/l/w;

    iput-object p2, p0, Lcom/applovin/exoplayer2/l/d0;->b:Lcom/applovin/exoplayer2/l/w$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/d0;->a:Lcom/applovin/exoplayer2/l/w;

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/d0;->b:Lcom/applovin/exoplayer2/l/w$b;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/w;->c(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$b;)V

    return-void
.end method
