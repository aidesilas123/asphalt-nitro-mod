###### Class com.facebook.appevents.aam.a (com.facebook.appevents.aam.a)
.class public final synthetic Lcom/facebook/appevents/aam/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/aam/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/aam/a;

    invoke-direct {v0}, Lcom/facebook/appevents/aam/a;-><init>()V

    sput-object v0, Lcom/facebook/appevents/aam/a;->a:Lcom/facebook/appevents/aam/a;

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

    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->a()V

    return-void
.end method
