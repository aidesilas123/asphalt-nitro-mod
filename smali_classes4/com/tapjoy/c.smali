###### Class com.tapjoy.c (com.tapjoy.c)
.class public final synthetic Lcom/tapjoy/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/tapjoy/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/c;

    invoke-direct {v0}, Lcom/tapjoy/c;-><init>()V

    sput-object v0, Lcom/tapjoy/c;->a:Lcom/tapjoy/c;

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

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    return-void
.end method
