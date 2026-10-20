###### Class com.facebook.appevents.i (com.facebook.appevents.i)
.class public final synthetic Lcom/facebook/appevents/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/i;

    invoke-direct {v0}, Lcom/facebook/appevents/i;-><init>()V

    sput-object v0, Lcom/facebook/appevents/i;->a:Lcom/facebook/appevents/i;

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

    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;->a()V

    return-void
.end method
