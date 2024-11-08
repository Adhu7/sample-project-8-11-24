<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Artist</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            background-color: #0056b3;
            color: white;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
        }
        .sidebar a {
            color: white;
            padding: 15px;
            text-decoration: none;
            display: block;
            font-size: 16px;
        }
        .sidebar a:hover {
            background-color: #004085;
        }
        .main-content {
            margin-left: 260px;
            padding: 20px;
        }
        footer {
            background-color: #0056b3;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2 class="text-center py-4">Artevo Admin</h2>
    <a href="adminDashboard.jsp">Dashboard</a>
    <a href="artistManage.jsp">Artist Management</a>
    <a href="artworkManage.jsp">Artwork Management</a>
    <a href="orderManage.jsp">Order Management</a>
    <a href="admin-login.jsp" class="btn btn-logout">Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Top Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Admin Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <h5>Edit Artist</h5>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Edit Artist Form -->
    <div class="container mt-4">
        <h2>Edit Artist Information</h2>
        <p>Update the details of the artist. Note that the artist's name is not editable.</p>

        <form action="updateArtist.jsp" method="post">
            <!-- Artist Name (Read-Only) -->
            <div class="mb-3">
                <label for="artist-name" class="form-label">Artist Name</label>
                <input type="text" class="form-control" id="artist-name" name="name" value="Ravi Varma" readonly>
            </div>

            <!-- Genre -->
            <div class="mb-3">
                <label for="artist-genre" class="form-label">Genre</label>
                <select class="form-control" id="artist-genre" name="genre" required>
                    <option value="">Select Genre</option>
                    <option value="Canvas">Canvas</option>
                    <option value="Wall Painting">Wall Painting</option>
                    <option value="Portraits">Portraits</option>
                </select>
            </div>

            <!-- Email -->
            <div class="mb-3">
                <label for="artist-email" class="form-label">Email</label>
                <input type="email" class="form-control" id="artist-email" name="email" value="ravivarma76@gmail.com" required>
            </div>

            <!-- Phone Number -->
            <div class="mb-3">
                <label for="artist-phone" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="artist-phone" name="phone" value="9860404189" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Artevo. All Rights Reserved.</p>
    <p><a href="terms.jsp">Terms & Conditions</a> | <a href="privacy.jsp">Privacy Policy</a></p>
</footer>

<!-- Bootstrap JS & Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
