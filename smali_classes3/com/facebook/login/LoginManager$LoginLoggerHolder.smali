###### Class com.facebook.login.LoginManager.LoginLoggerHolder (com.facebook.login.LoginManager$LoginLoggerHolder)
.class final Lcom/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoginLoggerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/login/LoginManager$LoginLoggerHolder;

.field private static logger:Lcom/facebook/login/LoginLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->INSTANCE:Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_c

    :try_start_3
    sget-object p1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception p1

    goto :goto_26

    :cond_c
    :goto_c
    if-nez p1, :cond_11

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_11
    :try_start_11
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    if-nez v0, :cond_22

    new-instance v0, Lcom/facebook/login/LoginLogger;

    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    :cond_22
    sget-object p1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_a

    monitor-exit p0

    return-object p1

    :goto_26
    monitor-exit p0

    throw p1
.end method
