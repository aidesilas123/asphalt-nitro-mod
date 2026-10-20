###### Class com.facebook.appevents.u (com.facebook.appevents.u)
.class public final synthetic Lcom/facebook/appevents/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/u;

    invoke-direct {v0}, Lcom/facebook/appevents/u;-><init>()V

    sput-object v0, Lcom/facebook/appevents/u;->a:Lcom/facebook/appevents/u;

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

    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->c()V

    return-void
.end method
