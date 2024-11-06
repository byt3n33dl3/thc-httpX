<!DOCTYPE html>
<html>

<head>
    <title>Screenshot Table</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        table {
            margin-top: 20px;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 10px;
            text-align: center;
            border: 1px solid black;
        }

        .thumbnail {
            width: 400px;
            height: 300px;
            object-fit: cover;
        }
    </style>
</head>

<body>

    <table style="margin: 20px auto; border-collapse: collapse">
        <thead>
            <tr>
                <th style="padding: 10px; text-align: center; border: 1px solid black">
                    <strong>Response Info</strong>
                </th>
                <th style="padding: 10px; text-align: center; border: 1px solid black">
                    <strong>Screenshot</strong>
                </th>
            </tr>
        </thead>
        <tbody>
            {{ $ExtractTitle := .Options.ExtractTitle }}
            {{ $OutputStatusCode := .Options.StatusCode }}
            {{ $OutputContentLength := .Options.ContentLength }}
            {{ $Favicon := .Options.Favicon }}
            {{ $OutputResponseTime := .Options.OutputResponseTime }}
            {{ $OutputLinesCount := .Options.OutputLinesCount }}
            {{ $OutputWordsCount := .Options.OutputWordsCount }}
            {{ $OutputServerHeader := .Options.OutputServerHeader }}
            {{ $TechDetect := .Options.TechDetect }}
            {{range .Output}}
            {{if ne .ScreenshotPath ""}}
            <tr>
                <td style="padding: 10px; border: 1px solid black">
                    <ul style="list-style-type: none; padding-left: 0">
                        <li>
                            <strong>Host:</strong>
                            <a href="{{.URL}}" style="text-decoration: none; color: blue">{{.URL}}</a>
                        </li>
                        {{if $ExtractTitle}}
                        <li>
                            <strong>Title:</strong>
                            <a style="text-decoration: none; color: blue">{{.Title}}</a>
                        </li>
                        {{end}}
                        {{if $OutputStatusCode}}
                        <li>
                            <strong>Status Code:</strong>
                            <a style="text-decoration: none; color: blue">{{.StatusCode}}</a>
                        </li>
                        {{end}}
                        {{if $OutputContentLength}}
                        <li>
                            <strong>Content-Length:</strong>
                            <a style="text-decoration: none; color: blue">{{.ContentLength}}</a>
                        </li>
                        {{end}}
                        {{if $Favicon}}
                        <li>
                            <strong>Favicon:</strong>
                            <a style="text-decoration: none; color: blue">{{.FavIconMMH3}}</a>
                        </li>
                        {{end}}
                        {{if $OutputResponseTime}}
                        <li>
                            <strong>Response Time:</strong>
                            <a style="text-decoration: none; color: blue">{{.ResponseTime}}</a>
                        </li>
                        {{end}}
                        {{if $OutputLinesCount}}
                        <li>
                            <strong>Total Lines:</strong>
                            <a style="text-decoration: none; color: blue">{{.Lines}}</a>
                        </li>
                        {{end}}
                        {{if $OutputWordsCount}}
                        <li>
                            <strong>Words Count:</strong>
                            <a style="text-decoration: none; color: blue">{{.Words}}</a>
                        </li>
                        {{end}}
                        {{if $OutputServerHeader}}
                        <li>
                            <strong>Webserver:</strong>
                            <a style="text-decoration: none; color: blue">{{.WebServer}}</a>
                        </li>
                        {{end}}
                        {{if $TechDetect}}
                        <li>
                            <strong>Technologies:</strong>
                            <a style="text-decoration: none; color: blue">{{.Technologies}}</a>
                        </li>
                        {{end}}
                    </ul>
                </td>
                <td style="padding: 10px; border: 1px solid black">
                    <a href="{{.ScreenshotPathRel | safeURL}}">
                        <img src="{{.ScreenshotPathRel | safeURL}}" alt="Screenshot" style="width: 400px; height: 300px" />
                    </a>
                </td>
            </tr>
            {{end}}
            {{end}}
        </tbody>
    </table>
</body>

</html>
