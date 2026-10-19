###### Class com.facebook.appevents.q (com.facebook.appevents.q)
.class public final synthetic Lcom/facebook/appevents/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/q;

    invoke-direct {v0}, Lcom/facebook/appevents/q;-><init>()V

    sput-object v0, Lcom/facebook/appevents/q;->a:Lcom/facebook/appevents/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->g(Z)V

    return-void
.end method
