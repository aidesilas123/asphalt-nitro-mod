###### Class io.didomi.iabtcf.decoder.exceptions.ByteParseException (io.didomi.iabtcf.decoder.exceptions.ByteParseException)
.class public Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;
.super Lio/didomi/iabtcf/decoder/exceptions/TCStringDecodeException;
.source "ByteParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x25f9920d920f79b5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/exceptions/TCStringDecodeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/didomi/iabtcf/decoder/exceptions/TCStringDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
