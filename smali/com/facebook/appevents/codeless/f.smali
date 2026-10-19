###### Class com.facebook.appevents.codeless.f (com.facebook.appevents.codeless.f)
.class public final synthetic Lcom/facebook/appevents/codeless/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/codeless/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/codeless/f;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/f;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/f;->a:Lcom/facebook/appevents/codeless/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/codeless/ViewIndexer$Companion;->a(Lcom/facebook/GraphResponse;)V

    return-void
.end method
