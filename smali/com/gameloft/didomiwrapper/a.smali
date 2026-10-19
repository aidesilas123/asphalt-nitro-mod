###### Class com.gameloft.didomiwrapper.a (com.gameloft.didomiwrapper.a)
.class public final synthetic Lcom/gameloft/didomiwrapper/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# static fields
.field public static final synthetic a:Lcom/gameloft/didomiwrapper/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/a;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/a;-><init>()V

    sput-object v0, Lcom/gameloft/didomiwrapper/a;->a:Lcom/gameloft/didomiwrapper/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .registers 1

    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapper;->lambda$InitializeNotifications$1()V

    return-void
.end method
