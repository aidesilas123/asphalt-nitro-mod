###### Class com.json.y6 (com.ironsource.y6)
.class public interface abstract Lcom/ironsource/y6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/y6$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract getPresentingView()Landroid/webkit/WebView;
.end method
