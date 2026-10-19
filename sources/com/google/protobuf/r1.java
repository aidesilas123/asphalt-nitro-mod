package com.google.protobuf;

/* JADX INFO: compiled from: TextFormatEscaper.java */
/* JADX INFO: loaded from: classes3.dex */
final class r1 {

    /* JADX INFO: compiled from: TextFormatEscaper.java */
    class a implements c {
        final /* synthetic */ ByteString val$input;

        a(ByteString byteString) {
            this.val$input = byteString;
        }

        @Override // com.google.protobuf.r1.c
        public byte byteAt(int i) {
            return this.val$input.byteAt(i);
        }

        @Override // com.google.protobuf.r1.c
        public int size() {
            return this.val$input.size();
        }
    }

    /* JADX INFO: compiled from: TextFormatEscaper.java */
    class b implements c {
        final /* synthetic */ byte[] val$input;

        b(byte[] bArr) {
            this.val$input = bArr;
        }

        @Override // com.google.protobuf.r1.c
        public byte byteAt(int i) {
            return this.val$input[i];
        }

        @Override // com.google.protobuf.r1.c
        public int size() {
            return this.val$input.length;
        }
    }

    /* JADX INFO: compiled from: TextFormatEscaper.java */
    private interface c {
        byte byteAt(int i);

        int size();
    }

    private r1() {
    }

    static String escapeBytes(ByteString byteString) {
        return escapeBytes(new a(byteString));
    }

    static String escapeBytes(c cVar) {
        StringBuilder sb = new StringBuilder(cVar.size());
        for (int i = 0; i < cVar.size(); i++) {
            byte bByteAt = cVar.byteAt(i);
            if (bByteAt == 34) {
                sb.append("\\\"");
            } else if (bByteAt == 39) {
                sb.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bByteAt < 32 || bByteAt > 126) {
                            sb.append('\\');
                            sb.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb.append((char) ((bByteAt & 7) + 48));
                        } else {
                            sb.append((char) bByteAt);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    static String escapeBytes(byte[] bArr) {
        return escapeBytes(new b(bArr));
    }

    static String escapeDoubleQuotesAndBackslashes(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }
}
