###### Class com.mbridge.msdk.thrid.okhttp.Authenticator (com.mbridge.msdk.thrid.okhttp.Authenticator)
.class public interface abstract Lcom/mbridge/msdk/thrid/okhttp/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lcom/mbridge/msdk/thrid/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/Authenticator$1;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/Authenticator$1;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/Authenticator;->NONE:Lcom/mbridge/msdk/thrid/okhttp/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/mbridge/msdk/thrid/okhttp/Route;Lcom/mbridge/msdk/thrid/okhttp/Response;)Lcom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.mbridge.msdk.thrid.okhttp.Authenticator.AnonymousClass1 (com.mbridge.msdk.thrid.okhttp.Authenticator$1)
.class final Lcom/mbridge/msdk/thrid/okhttp/Authenticator$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/mbridge/msdk/thrid/okhttp/Route;Lcom/mbridge/msdk/thrid/okhttp/Response;)Lcom/mbridge/msdk/thrid/okhttp/Request;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method
