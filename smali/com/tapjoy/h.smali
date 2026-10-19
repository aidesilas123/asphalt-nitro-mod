###### Class com.tapjoy.h (com.tapjoy.h)
.class public final synthetic Lcom/tapjoy/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/tapjoy/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/h;

    invoke-direct {v0}, Lcom/tapjoy/h;-><init>()V

    sput-object v0, Lcom/tapjoy/h;->a:Lcom/tapjoy/h;

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

    invoke-static {}, Lcom/tapjoy/TapjoyPluginAPI;->a()V

    return-void
.end method
