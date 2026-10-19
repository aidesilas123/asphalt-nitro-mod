###### Class com.facebook.o (com.facebook.o)
.class public final synthetic Lcom/facebook/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/FacebookSdk$GraphRequestCreator;


# static fields
.field public static final synthetic a:Lcom/facebook/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/o;

    invoke-direct {v0}, Lcom/facebook/o;-><init>()V

    sput-object v0, Lcom/facebook/o;->a:Lcom/facebook/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/FacebookSdk;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method
