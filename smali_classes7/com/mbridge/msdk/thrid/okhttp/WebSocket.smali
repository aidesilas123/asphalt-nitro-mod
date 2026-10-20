###### Class com.mbridge.msdk.thrid.okhttp.WebSocket (com.mbridge.msdk.thrid.okhttp.WebSocket)
.class public interface abstract Lcom/mbridge/msdk/thrid/okhttp/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/WebSocket$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
.end method

.method public abstract queueSize()J
.end method

.method public abstract request()Lcom/mbridge/msdk/thrid/okhttp/Request;
.end method

.method public abstract send(Lcom/mbridge/msdk/thrid/okio/ByteString;)Z
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method
