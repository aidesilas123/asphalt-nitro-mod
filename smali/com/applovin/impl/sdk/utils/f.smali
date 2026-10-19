###### Class com.applovin.impl.sdk.utils.f (com.applovin.impl.sdk.utils.f)
.class public Lcom/applovin/impl/sdk/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# static fields
.field private static final aVB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/utils/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ayU:Lcom/applovin/impl/sdk/utils/r;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/f;->aVB:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/impl/sdk/utils/a0;

    invoke-direct {v0, p0, p4}, Lcom/applovin/impl/sdk/utils/a0;-><init>(Lcom/applovin/impl/sdk/utils/f;Ljava/lang/Runnable;)V

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/sdk/utils/r;->b(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/r;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/f;->ayU:Lcom/applovin/impl/sdk/utils/r;

    iput-object p3, p0, Lcom/applovin/impl/sdk/utils/f;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object p1, Lcom/applovin/impl/sdk/utils/f;->aVB:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.application_paused"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.application_resumed"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static a(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/f;
    .registers 5

    new-instance v0, Lcom/applovin/impl/sdk/utils/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/utils/f;-><init>(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/utils/f;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/utils/f;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic j(Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/f;->tT()V

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method


# virtual methods
.method public AH()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/f;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/r;->AH()J

    move-result-wide v0

    return-wide v0
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .registers 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p1, p0, Lcom/applovin/impl/sdk/utils/f;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/r;->pause()V

    goto :goto_1f

    :cond_12
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/applovin/impl/sdk/utils/f;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/r;->resume()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public tT()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/f;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/r;->tT()V

    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    sget-object v0, Lcom/applovin/impl/sdk/utils/f;->aVB:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.applovin.impl.sdk.utils.a0 (com.applovin.impl.sdk.utils.a0)
.class public final synthetic Lcom/applovin/impl/sdk/utils/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/utils/f;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/utils/f;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/a0;->a:Lcom/applovin/impl/sdk/utils/f;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/a0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/a0;->a:Lcom/applovin/impl/sdk/utils/f;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/a0;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/f;->b(Lcom/applovin/impl/sdk/utils/f;Ljava/lang/Runnable;)V

    return-void
.end method
