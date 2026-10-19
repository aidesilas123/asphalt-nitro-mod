###### Class com.mbridge.msdk.thrid.okhttp.Call (com.mbridge.msdk.thrid.okhttp.Call)
.class public interface abstract Lcom/mbridge/msdk/thrid/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lcom/mbridge/msdk/thrid/okhttp/Call;
.end method

.method public abstract enqueue(Lcom/mbridge/msdk/thrid/okhttp/Callback;)V
.end method

.method public abstract execute()Lcom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lcom/mbridge/msdk/thrid/okhttp/Request;
.end method

.method public abstract timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
.end method

###### Class com.mbridge.msdk.thrid.okhttp.Call.Factory (com.mbridge.msdk.thrid.okhttp.Call$Factory)
.class public interface abstract Lcom/mbridge/msdk/thrid/okhttp/Call$Factory;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract newCall(Lcom/mbridge/msdk/thrid/okhttp/Request;)Lcom/mbridge/msdk/thrid/okhttp/Call;
.end method
