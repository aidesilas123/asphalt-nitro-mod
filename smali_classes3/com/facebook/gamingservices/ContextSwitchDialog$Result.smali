###### Class com.facebook.gamingservices.ContextSwitchDialog.Result (com.facebook.gamingservices.ContextSwitchDialog$Result)
.class public final Lcom/facebook/gamingservices/ContextSwitchDialog$Result;
.super Ljava/lang/Object;
.source "ContextSwitchDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/ContextSwitchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private contextID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphResponse;)V
    .registers 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_8
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_25

    :cond_f
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_25

    :cond_18
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->setContextID(Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_21} :catch_22

    goto :goto_25

    :catch_22
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "contextID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContextID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    return-object v0
.end method

.method public final setContextID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    return-void
.end method
