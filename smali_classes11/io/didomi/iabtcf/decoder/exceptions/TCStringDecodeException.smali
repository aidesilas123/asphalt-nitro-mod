###### Class io.didomi.iabtcf.decoder.exceptions.TCStringDecodeException (io.didomi.iabtcf.decoder.exceptions.TCStringDecodeException)
.class public Lio/didomi/iabtcf/decoder/exceptions/TCStringDecodeException;
.super Ljava/lang/RuntimeException;
.source "TCStringDecodeException.java"


# static fields
.field private static final serialVersionUID:J = 0x3e9205ba257e9d4eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
