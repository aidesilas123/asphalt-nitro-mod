###### Class com.bytedance.sdk.component.utils.v (com.bytedance.sdk.component.utils.v)
.class public Lcom/bytedance/sdk/component/utils/v;
.super Ljava/lang/Object;
.source "TTNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/v$b;,
        Lcom/bytedance/sdk/component/utils/v$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/component/utils/v$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile d:I

.field private static volatile e:J

.field private static volatile f:I

.field private static g:Lcom/bytedance/sdk/component/utils/p;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/utils/v;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/utils/v;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/component/utils/v;->d:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/bytedance/sdk/component/utils/v;->e:J

    const v0, 0xea60

    sput v0, Lcom/bytedance/sdk/component/utils/v;->f:I

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/component/utils/v;->g:Lcom/bytedance/sdk/component/utils/p;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/v;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcom/bytedance/sdk/component/utils/v;->d:I

    return p0
.end method

.method static synthetic a(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;J)I
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/sdk/component/utils/v;->e:J

    add-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-gtz p1, :cond_10

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_10
    sget p1, Lcom/bytedance/sdk/component/utils/v;->d:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1a

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_1a
    sget-wide p1, Lcom/bytedance/sdk/component/utils/v;->e:J

    sub-long/2addr v0, p1

    sget p1, Lcom/bytedance/sdk/component/utils/v;->f:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_29

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    :cond_29
    sget p0, Lcom/bytedance/sdk/component/utils/v;->d:I

    return p0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/v;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;Landroid/content/Intent;IZ)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;ZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/component/utils/v$a;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/bytedance/sdk/component/utils/v;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/component/utils/v$a;Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/bytedance/sdk/component/utils/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_b
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/component/utils/v$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/component/utils/v$b;-><init>(Lcom/bytedance/sdk/component/utils/v$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p1, Lcom/bytedance/sdk/component/utils/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_21

    :catchall_21
    :cond_21
    sget-object p1, Lcom/bytedance/sdk/component/utils/v;->b:Ljava/util/Map;

    sget-object v0, Lcom/bytedance/sdk/component/utils/v;->a:Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/bytedance/sdk/component/utils/v;->d:I

    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/v;->c(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/bytedance/sdk/component/utils/v;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/component/utils/v;->e:J

    sget p0, Lcom/bytedance/sdk/component/utils/v;->d:I

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;IZ)V
    .registers 7

    sget-object v0, Lcom/bytedance/sdk/component/utils/v;->b:Ljava/util/Map;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_27

    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/utils/v$a;

    if-eqz v1, :cond_13

    xor-int/lit8 v2, p3, 0x1

    invoke-interface {v1, p0, p1, v2, p2}, Lcom/bytedance/sdk/component/utils/v$a;->a(Landroid/content/Context;Landroid/content/Intent;ZI)V

    goto :goto_13

    :cond_27
    :goto_27
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;ZZ)V
    .registers 11

    const/4 v0, 0x0

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    sput v0, Lcom/bytedance/sdk/component/utils/v;->d:I

    return-void

    :cond_8
    sget-object v1, Lcom/bytedance/sdk/component/utils/v;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/bytedance/sdk/component/utils/v$1;

    const-string v2, "getNetworkType"

    move-object v1, v0

    move v3, p3

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/utils/v$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;ZLandroid/content/Intent;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/g/f;->b(Lcom/bytedance/sdk/component/g/h;)V

    :cond_20
    return-void
.end method

.method private static c(Landroid/content/Context;)I
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_68

    :cond_16
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_21

    if-eq v2, v0, :cond_1f

    return v0

    :cond_1f
    const/4 p0, 0x4

    return p0

    :cond_21
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x3

    packed-switch v3, :pswitch_data_6c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    :pswitch_37
    return v4

    :pswitch_38
    sget-object v1, Lcom/bytedance/sdk/component/utils/v;->g:Lcom/bytedance/sdk/component/utils/p;

    if-eqz v1, :cond_43

    invoke-interface {v1, p0, v2}, Lcom/bytedance/sdk/component/utils/p;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result p0

    if-eqz p0, :cond_43

    return v4

    :cond_43
    const/4 p0, 0x5

    return p0

    :pswitch_45
    return v5

    :pswitch_46
    const/4 p0, 0x2

    return p0

    :goto_48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "TD-SCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "WCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "CDMA2000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_6a

    if-eqz p0, :cond_67

    :cond_66
    return v5

    :cond_67
    return v0

    :cond_68
    :goto_68
    const/4 p0, 0x0

    return p0

    :catchall_6a
    return v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_46
        :pswitch_45
        :pswitch_38
        :pswitch_45
        :pswitch_45
        :pswitch_46
        :pswitch_45
        :pswitch_38
        :pswitch_38
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic c()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/v;->b:Ljava/util/Map;

    return-object v0
.end method

###### Class com.bytedance.sdk.component.utils.v.AnonymousClass1 (com.bytedance.sdk.component.utils.v$1)
.class final Lcom/bytedance/sdk/component/utils/v$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "TTNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/v;->b(Landroid/content/Context;Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;ZLandroid/content/Intent;)V
    .registers 6

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/utils/v$1;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/component/utils/v$1;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/utils/v$1;->c:Z

    iput-object p5, p0, Lcom/bytedance/sdk/component/utils/v$1;->d:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/v$1;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/v$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/v;->a(Landroid/content/Context;)I

    move-result v0

    :goto_d
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/v;->a(I)I

    invoke-static {}, Lcom/bytedance/sdk/component/utils/v;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/v$1;->c:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/v$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/v$1;->d:Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/v;->b()I

    move-result v2

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/utils/v$1;->a:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/v;->a(Landroid/content/Context;Landroid/content/Intent;IZ)V

    :cond_28
    return-void
.end method

###### Class com.bytedance.sdk.component.utils.v.a (com.bytedance.sdk.component.utils.v$a)
.class public interface abstract Lcom/bytedance/sdk/component/utils/v$a;
.super Ljava/lang/Object;
.source "TTNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/Intent;ZI)V
.end method

###### Class com.bytedance.sdk.component.utils.v.b (com.bytedance.sdk.component.utils.v$b)
.class Lcom/bytedance/sdk/component/utils/v$b;
.super Landroid/content/BroadcastReceiver;
.source "TTNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/utils/v$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/component/utils/v;->c()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/bytedance/sdk/component/utils/v;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {p1, p2, v1, v0}, Lcom/bytedance/sdk/component/utils/v;->a(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    return-void
.end method
