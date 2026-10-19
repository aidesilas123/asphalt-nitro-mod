###### Class com.facebook.appevents.o (com.facebook.appevents.o)
.class public final synthetic Lcom/facebook/appevents/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/o;

    invoke-direct {v0}, Lcom/facebook/appevents/o;-><init>()V

    sput-object v0, Lcom/facebook/appevents/o;->a:Lcom/facebook/appevents/o;

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

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->e(Z)V

    return-void
.end method
