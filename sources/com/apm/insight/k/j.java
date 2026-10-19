package com.apm.insight.k;

import com.json.b4;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class j {
    private final String a;
    private HttpURLConnection b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f277d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private m f279f;

    public j(String str, String str2, boolean z) throws ProtocolException {
        this.c = str2;
        this.f277d = z;
        String str3 = "AAA" + System.currentTimeMillis() + "AAA";
        this.a = str3;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        this.b = httpURLConnection;
        httpURLConnection.setUseCaches(false);
        this.b.setDoOutput(true);
        this.b.setDoInput(true);
        this.b.setRequestMethod("POST");
        this.b.setRequestProperty(b4.I, "multipart/form-data; boundary=" + str3);
        if (!z) {
            this.f278e = new f(this.b.getOutputStream());
        } else {
            this.b.setRequestProperty("Content-Encoding", "gzip");
            this.f279f = new m(this.b.getOutputStream());
        }
    }

    public String a() throws IOException {
        ArrayList arrayList = new ArrayList();
        byte[] bytes = ("\r\n--" + this.a + "--\r\n").getBytes();
        if (this.f277d) {
            this.f279f.write(bytes);
            this.f279f.b();
            this.f279f.a();
        } else {
            this.f278e.write(bytes);
            this.f278e.flush();
            this.f278e.a();
        }
        int responseCode = this.b.getResponseCode();
        if (responseCode != 200) {
            throw new IOException("Server returned non-OK status: " + responseCode);
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.b.getInputStream()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            arrayList.add(line);
        }
        bufferedReader.close();
        this.b.disconnect();
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        return sb.toString();
    }

    public void a(String str, File file, Map<String, String> map) {
        String name = file.getName();
        StringBuilder sb = new StringBuilder();
        sb.append("--");
        sb.append(this.a);
        sb.append("\r\n");
        sb.append("Content-Disposition: form-data; name=\"");
        sb.append(str);
        sb.append("\"; filename=\"");
        sb.append(name);
        sb.append("\"");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append("; ");
            sb.append(entry.getKey());
            sb.append("=\"");
            sb.append(entry.getValue());
            sb.append("\"");
        }
        sb.append("\r\n");
        sb.append("Content-Transfer-Encoding: binary");
        sb.append("\r\n");
        sb.append("\r\n");
        if (this.f277d) {
            this.f279f.write(sb.toString().getBytes());
        } else {
            this.f278e.write(sb.toString().getBytes());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            int i = fileInputStream.read(bArr);
            if (i == -1) {
                break;
            } else if (this.f277d) {
                this.f279f.write(bArr, 0, i);
            } else {
                this.f278e.write(bArr, 0, i);
            }
        }
        fileInputStream.close();
        if (this.f277d) {
            this.f279f.write("\r\n".getBytes());
        } else {
            this.f278e.write("\r\n".getBytes());
            this.f278e.flush();
        }
    }

    public void a(String str, String str2) {
        a(str, str2, false);
    }

    public void a(String str, String str2, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("--");
        sb.append(this.a);
        sb.append("\r\n");
        sb.append("Content-Disposition: form-data; name=\"");
        sb.append(str);
        sb.append("\"");
        sb.append("\r\n");
        sb.append("Content-Type: text/plain; charset=");
        sb.append(this.c);
        sb.append("\r\n");
        sb.append("\r\n");
        try {
            if (this.f277d) {
                this.f279f.write(sb.toString().getBytes());
            } else {
                this.f278e.write(sb.toString().getBytes());
            }
        } catch (IOException unused) {
        }
        byte[] bytes = str2.getBytes();
        if (z) {
            bytes = com.apm.insight.i.i().getEncryptImpl().a(bytes);
        }
        try {
            if (this.f277d) {
                this.f279f.write(bytes);
                this.f279f.write("\r\n".getBytes());
            } else {
                this.f278e.write(bytes);
                this.f278e.write("\r\n".getBytes());
            }
        } catch (IOException unused2) {
        }
    }

    public void a(String str, File... fileArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("--");
        sb.append(this.a);
        sb.append("\r\n");
        sb.append("Content-Disposition: form-data; name=\"");
        sb.append(str);
        sb.append("\"; filename=\"");
        sb.append(str);
        sb.append("\"");
        sb.append("\r\n");
        sb.append("Content-Transfer-Encoding: binary");
        sb.append("\r\n");
        sb.append("\r\n");
        if (this.f277d) {
            this.f279f.write(sb.toString().getBytes());
        } else {
            this.f278e.write(sb.toString().getBytes());
        }
        com.apm.insight.l.i.a(this.f277d ? this.f279f : this.f278e, fileArr);
        if (this.f277d) {
            this.f279f.write("\r\n".getBytes());
        } else {
            this.f278e.write("\r\n".getBytes());
            this.f278e.flush();
        }
    }
}
