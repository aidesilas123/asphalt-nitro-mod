###### Class com.applovin.impl.communicator.e (com.applovin.impl.communicator.e)
.class public final synthetic Lcom/applovin/impl/communicator/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lcom/applovin/impl/communicator/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/impl/communicator/e;

    invoke-direct {v0}, Lcom/applovin/impl/communicator/e;-><init>()V

    sput-object v0, Lcom/applovin/impl/communicator/e;->a:Lcom/applovin/impl/communicator/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
