###### Class com.mbridge.msdk.thrid.okhttp.EventListener (com.mbridge.msdk.thrid.okhttp.EventListener)
.class public abstract Lcom/mbridge/msdk/thrid/okhttp/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/mbridge/msdk/thrid/okhttp/EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/EventListener$1;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener$1;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/EventListener;->NONE:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lcom/mbridge/msdk/thrid/okhttp/EventListener;)Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/EventListener$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener$2;-><init>(Lcom/mbridge/msdk/thrid/okhttp/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

.method public callFailed(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public callStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

.method public connectEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/mbridge/msdk/thrid/okhttp/Protocol;)V
    .registers 5

    return-void
.end method

.method public connectFailed(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/mbridge/msdk/thrid/okhttp/Protocol;Ljava/io/IOException;)V
    .registers 6

    return-void
.end method

.method public connectStart(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    return-void
.end method

.method public connectionAcquired(Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/Connection;)V
    .registers 3

    return-void
.end method

.method public connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/Connection;)V
    .registers 3

    return-void
.end method

.method public dnsEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/thrid/okhttp/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dnsStart(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public requestBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;J)V
    .registers 4

    return-void
.end method

.method public requestBodyStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

.method public requestHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/Request;)V
    .registers 3

    return-void
.end method

.method public requestHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

.method public responseBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;J)V
    .registers 4

    return-void
.end method

.method public responseBodyStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

.method public responseHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/Response;)V
    .registers 3

    return-void
.end method

.method public responseHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

.method public secureConnectEnd(Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/Handshake;)V
    .registers 3

    return-void
.end method

.method public secureConnectStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V
    .registers 2

    return-void
.end method

###### Class com.mbridge.msdk.thrid.okhttp.EventListener.AnonymousClass1 (com.mbridge.msdk.thrid.okhttp.EventListener$1)
.class final Lcom/mbridge/msdk/thrid/okhttp/EventListener$1;
.super Lcom/mbridge/msdk/thrid/okhttp/EventListener;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener;-><init>()V

    return-void
.end method

###### Class com.mbridge.msdk.thrid.okhttp.EventListener.AnonymousClass2 (com.mbridge.msdk.thrid.okhttp.EventListener$2)
.class final Lcom/mbridge/msdk/thrid/okhttp/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/EventListener;->factory(Lcom/mbridge/msdk/thrid/okhttp/EventListener;)Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/EventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/EventListener$2;->val$listener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/mbridge/msdk/thrid/okhttp/Call;)Lcom/mbridge/msdk/thrid/okhttp/EventListener;
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/EventListener$2;->val$listener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    return-object p1
.end method

###### Class com.mbridge.msdk.thrid.okhttp.EventListener.Factory (com.mbridge.msdk.thrid.okhttp.EventListener$Factory)
.class public interface abstract Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Lcom/mbridge/msdk/thrid/okhttp/Call;)Lcom/mbridge/msdk/thrid/okhttp/EventListener;
.end method
