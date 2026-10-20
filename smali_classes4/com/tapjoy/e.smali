###### Class com.tapjoy.e (com.tapjoy.e)
.class public final synthetic Lcom/tapjoy/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/tapjoy/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/e;

    invoke-direct {v0}, Lcom/tapjoy/e;-><init>()V

    sput-object v0, Lcom/tapjoy/e;->a:Lcom/tapjoy/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->e()V

    return-void
.end method
