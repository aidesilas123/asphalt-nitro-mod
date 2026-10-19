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

###### Class com.ironsource.y6.a (com.ironsource.y6$a)
.class public interface abstract Lcom/ironsource/y6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
